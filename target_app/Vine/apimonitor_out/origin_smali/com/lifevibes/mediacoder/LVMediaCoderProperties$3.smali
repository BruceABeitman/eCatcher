.class final Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;
.super Ljava/util/ArrayList;
.source "LVMediaCoderProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/mediacoder/LVMediaCoderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7d000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    const v0, 0xfa000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    const v0, 0x1f4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    const v0, 0x2ee000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    const v0, 0x4e2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
