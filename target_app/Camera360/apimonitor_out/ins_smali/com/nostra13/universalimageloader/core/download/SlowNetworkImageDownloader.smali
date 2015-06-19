.class public Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader;
.super Ljava/lang/Object;
.source "SlowNetworkImageDownloader.java"
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field private final wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
return-void
.end method
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 6
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invoke-interface {v1, p1, p2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
sget-object v1, Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
move-result-object v2
invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_1e
:goto_15
return-object v0
:pswitch_16
new-instance v1, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;
invoke-direct {v1, v0}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;-><init>(Ljava/io/InputStream;)V
move-object v0, v1
goto :goto_15
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_16
:pswitch_16
.end packed-switch
.end method