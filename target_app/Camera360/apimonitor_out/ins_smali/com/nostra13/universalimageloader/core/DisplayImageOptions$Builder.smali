.class public Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"
.field private cacheInMemory:Z
.field private cacheOnDisc:Z
.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;
.field private delayBeforeLoading:I
.field private displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private extraForDownloader:Ljava/lang/Object;
.field private handler:Landroid/os/Handler;
.field private imageForEmptyUri:I
.field private imageOnFail:I
.field private imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.field private postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.field private preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.field private resetViewBeforeLoading:Z
.field private stubImage:I
.method public constructor <init>()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->stubImage:I
iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:I
iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:I
iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
return-void
.end method
.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->stubImage:I
return v0
.end method
.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:I
return v0
.end method
.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object v0
.end method
.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
return-object v0
.end method
.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:I
return v0
.end method
.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
return v0
.end method
.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
return v0
.end method
.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
.registers 2
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
return v0
.end method
.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
return-object v0
.end method
.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
return-object v0
.end method
.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
.registers 2
iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
return v0
.end method
.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
return-object v0
.end method
.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 4
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "bitmapConfig can\'t be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
return-object p0
.end method
.method public build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.registers 3
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V
return-object v0
.end method
.method public cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
return-object p0
.end method
.method public cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
return-object p0
.end method
.method public cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
return-object p0
.end method
.method public cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
return-object p0
.end method
.method public cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 3
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->stubImage:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->stubImage:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageForEmptyUri:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageOnFail:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheInMemory:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->cacheOnDisc:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->delayBeforeLoading:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
#getter for: Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
return-object p0
.end method
.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 4
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "decodingOptions can\'t be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
return-object p0
.end method
.method public delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I
return-object p0
.end method
.method public displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 4
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "displayer can\'t be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
return-object p0
.end method
.method public extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;
return-object p0
.end method
.method public handler(Landroid/os/Handler;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;
return-object p0
.end method
.method public imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
return-object p0
.end method
.method public postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object p0
.end method
.method public preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
return-object p0
.end method
.method public resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
return-object p0
.end method
.method public resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z
return-object p0
.end method
.method public showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:I
return-object p0
.end method
.method public showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:I
return-object p0
.end method
.method public showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->stubImage:I
return-object p0
.end method