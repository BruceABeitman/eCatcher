.class public final Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"
.field private final cacheInMemory:Z
.field private final cacheOnDisc:Z
.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;
.field private final delayBeforeLoading:I
.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private final extraForDownloader:Ljava/lang/Object;
.field private final handler:Landroid/os/Handler;
.field private final imageForEmptyUri:I
.field private final imageOnFail:I
.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.field private final postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.field private final preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.field private final resetViewBeforeLoading:Z
.field private final stubImage:I
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->stubImage:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->stubImage:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisc:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
return-void
.end method
.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
return-void
.end method
.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->stubImage:I
return v0
.end method
.method static synthetic access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:I
return v0
.end method
.method static synthetic access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:I
return v0
.end method
.method static synthetic access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
return v0
.end method
.method static synthetic access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z
return v0
.end method
.method static synthetic access$1900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisc:Z
return v0
.end method
.method static synthetic access$2000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
return-object v0
.end method
.method static synthetic access$2100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
return-object v0
.end method
.method static synthetic access$2200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
return v0
.end method
.method static synthetic access$2300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$2400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method static synthetic access$2500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method static synthetic access$2600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
return-object v0
.end method
.method static synthetic access$2700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
return-object v0
.end method
.method public static createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.registers 1
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v0
return-object v0
.end method
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
return-object v0
.end method
.method public getDelayBeforeLoading()I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
return v0
.end method
.method public getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
return-object v0
.end method
.method public getExtraForDownloader()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
return-object v0
.end method
.method public getHandler()Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
if-nez v0, :cond_a
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
goto :goto_9
.end method
.method public getImageForEmptyUri()I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:I
return v0
.end method
.method public getImageOnFail()I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:I
return v0
.end method
.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
return-object v0
.end method
.method public getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method public getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method public getStubImage()I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->stubImage:I
return v0
.end method
.method public isCacheInMemory()Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z
return v0
.end method
.method public isCacheOnDisc()Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisc:Z
return v0
.end method
.method public isResetViewBeforeLoading()Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
return v0
.end method
.method public shouldDelayBeforeLoading()Z
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
if-lez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public shouldPostProcess()Z
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public shouldPreProcess()Z
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public shouldShowImageForEmptyUri()Z
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public shouldShowImageOnFail()Z
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public shouldShowStubImage()Z
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->stubImage:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method