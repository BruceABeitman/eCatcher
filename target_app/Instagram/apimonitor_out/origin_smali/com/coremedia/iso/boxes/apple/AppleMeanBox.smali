.class public final Lcom/coremedia/iso/boxes/apple/AppleMeanBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleMeanBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mean"


# instance fields
.field private meaning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "mean"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->meaning:Ljava/lang/String;

    return-void
.end method

.method protected final getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->meaning:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->meaning:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/k;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getMeaning()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->meaning:Ljava/lang/String;

    return-object v0
.end method

.method public final setMeaning(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/apple/AppleMeanBox;->meaning:Ljava/lang/String;

    return-void
.end method
