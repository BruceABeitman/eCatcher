.class synthetic Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;
.super Ljava/lang/Object;
.source "NetworkDeniedImageDownloader.java"
.field static final synthetic $SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
:try_start_9
sget-object v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTP:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22
sget-object v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTPS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
goto :goto_1f
:catch_22
move-exception v0
goto :goto_14
.end method