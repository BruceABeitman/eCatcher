.class public Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
.super Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
.source "ESDescriptorBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "esds"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "esds"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/a/h;
    .registers 2

    invoke-super {p0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/a/b;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/a/h;

    return-object v0
.end method
