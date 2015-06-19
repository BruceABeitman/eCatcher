.class public Lco/vine/android/recorder/RsBlur;
.super Ljava/lang/Object;
.source "RsBlur.java"


# instance fields
.field private mAllocationIn:Landroid/support/v8/renderscript/Allocation;

.field private mAllocationOut:Landroid/support/v8/renderscript/Allocation;

.field private mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;IIF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lco/vine/android/recorder/RsBlur;->mWidth:I

    iput p3, p0, Lco/vine/android/recorder/RsBlur;->mHeight:I

    new-instance v0, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    iget v1, p0, Lco/vine/android/recorder/RsBlur;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    iget v1, p0, Lco/vine/android/recorder/RsBlur;->mHeight:I

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsBlur;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsBlur;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object v1, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lco/vine/android/recorder/RsBlur;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/RsBlur;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/RsBlur;->mHeight:I

    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x80

    invoke-static {p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RsBlur;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;

    iget-object v0, p0, Lco/vine/android/recorder/RsBlur;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RsBlur;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object v0, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lco/vine/android/recorder/RsBlur;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lco/vine/android/recorder/RsBlur;->mAllocationIn:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v3, p0, Lco/vine/android/recorder/RsBlur;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    if-eqz p2, :cond_17

    iget-object v2, p0, Lco/vine/android/recorder/RsBlur;->mAllocationOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    :cond_17
    const-string v2, "RenderScriptBlur took {}ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2}, Lco/vine/android/recorder/RsBlur;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    :goto_8
    if-ge v0, p3, :cond_10

    invoke-virtual {p0, p2, p2}, Lco/vine/android/recorder/RsBlur;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    const-string v3, "RenderScriptBlur loop took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRadius(F)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RsBlur;->mBlur:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method
