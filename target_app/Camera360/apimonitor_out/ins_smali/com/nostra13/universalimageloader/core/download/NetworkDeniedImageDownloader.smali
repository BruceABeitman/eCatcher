.class public Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;
.super Ljava/lang/Object;
.source "NetworkDeniedImageDownloader.java"
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field private final wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
return-void
.end method
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 5
sget-object v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
move-result-object v1
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invoke-interface {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
return-object v0
:pswitch_16
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:pswitch_data_1c
.packed-switch 0x1
:pswitch_16
:pswitch_16
.end packed-switch
.end method