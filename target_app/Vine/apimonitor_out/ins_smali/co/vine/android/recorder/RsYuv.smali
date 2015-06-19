.class public Lco/vine/android/recorder/RsYuv;
.super Ljava/lang/Object;
.source "RsYuv.java"
.field private mAllocationIn:Landroid/support/v8/renderscript/Allocation;
.field private mAllocationOut:Landroid/support/v8/renderscript/Allocation;
.field private mYuv:Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;II)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
invoke-static {p1}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v2
invoke-static {p1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
move-result-object v2
iput-object v2, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
new-instance v1, Landroid/support/v8/renderscript/Type$Builder;
invoke-static {p1}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v2
invoke-direct {v1, p1, v2}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
invoke-virtual {v1, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v1, p3}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;
move-result-object v2
invoke-static {p1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
move-result-object v2
iput-object v2, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;
invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v2
mul-int v3, p3, p2
div-int/lit8 v4, p3, 0x2
div-int/lit8 v5, p2, 0x2
mul-int/2addr v4, v5
mul-int/lit8 v4, v4, 0x2
add-int/2addr v3, v4
invoke-static {p1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v2
iput-object v2, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;
:try_end_3a
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3a} :catch_42
iget-object v2, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
iget-object v3, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;
invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/support/v8/renderscript/Allocation;)V
return-void
:catch_42
move-exception v0
new-instance v2, Lco/vine/android/VineNotSupportedException;
invoke-direct {v2}, Lco/vine/android/VineNotSupportedException;-><init>()V
throw v2
.end method
.method public execute([BLandroid/graphics/Bitmap;)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V
iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
iget-object v1, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/support/v8/renderscript/Allocation;)V
iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;
invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
return-void
.end method