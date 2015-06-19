.class public Lcom/coremedia/iso/boxes/ProtectionSchemeInformationBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "ProtectionSchemeInformationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sinf"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "sinf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method
