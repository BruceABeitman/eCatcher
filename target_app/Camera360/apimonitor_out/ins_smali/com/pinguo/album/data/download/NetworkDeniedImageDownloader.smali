.class public Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;
.super Ljava/lang/Object;
.source "NetworkDeniedImageDownloader.java"
.implements Lcom/pinguo/album/data/download/ImageDownloader;
.field private static synthetic $SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I
.field private final wrappedDownloader:Lcom/pinguo/album/data/download/ImageDownloader;
.method static synthetic $SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme()[I
.registers 3
sget-object v0, Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->values()[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_5a
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->CONTENT:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_58
:try_start_1e
:goto_1e
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_56
:goto_27
:try_start_27
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_54
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTP:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_39
:try_start_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_52
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTPS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_42
.catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50
:goto_42
:try_start_42
sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_4e
sput-object v0, Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I
goto :goto_4
:catch_4e
move-exception v1
goto :goto_4b
:catch_50
move-exception v1
goto :goto_42
:catch_52
move-exception v1
goto :goto_39
:catch_54
move-exception v1
goto :goto_30
:catch_56
move-exception v1
goto :goto_27
:catch_58
move-exception v1
goto :goto_1e
:catch_5a
move-exception v1
goto :goto_15
.end method
.method public constructor <init>(Lcom/pinguo/album/data/download/ImageDownloader;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/pinguo/album/data/download/ImageDownloader;
return-void
.end method
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 5
invoke-static {}, Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme()[I
move-result-object v0
invoke-static {p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/pinguo/album/data/download/ImageDownloader$Scheme;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1e
iget-object v0, p0, Lcom/pinguo/album/data/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/pinguo/album/data/download/ImageDownloader;
invoke-interface {v0, p1, p2}, Lcom/pinguo/album/data/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
return-object v0
:pswitch_18
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:pswitch_data_1e
.packed-switch 0x1
:pswitch_18
:pswitch_18
.end packed-switch
.end method