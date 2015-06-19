.class public Lcom/coremedia/iso/boxes/ItemProtectionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "ItemProtectionBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ipro"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ipro"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getItemProtectionScheme()Lcom/coremedia/iso/boxes/SchemeInformationBox;
    .registers 3

    const-class v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
