.class public abstract Lcom/pinguo/camera360/lib/camera/sheme/ShemeFactory;
.super Ljava/lang/Object;
.source "ShemeFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightness()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "brightness"

    const-string/jumbo v3, "brightness-values"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->BRIGHTNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "brightness"

    const-string/jumbo v3, "max-brightness"

    const-string/jumbo v4, "min-brightness"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->BRIGHTNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "brightness"

    const-string/jumbo v3, "brightness-max"

    const-string/jumbo v4, "brightness-min"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->BRIGHTNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;

    const-string/jumbo v2, "brightness"

    const-string/jumbo v3, "-"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->BRIGHTNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeSingle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getContrast()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "mot-contrast"

    const-string/jumbo v3, "mot-contrast-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "nv-contrast"

    const-string/jumbo v3, "nv-contrast-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "contrast"

    const-string/jumbo v3, "contrast-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "contrast"

    const-string/jumbo v3, "contrast-max"

    const-string/jumbo v4, "contrast-min"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "contrast"

    const-string/jumbo v3, "max-contrast"

    const-string/jumbo v4, "min-contrast"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;

    const-string/jumbo v2, "contrast"

    const-string/jumbo v3, "max-contrast"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;

    const-string/jumbo v2, "contrast"

    const-string/jumbo v3, "contrast-max"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->CONTRANST:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getExposure()Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v1, "auto-exposure"

    const-string/jumbo v2, "auto-exposure-values"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v1, "tsb-exposure"

    const-string/jumbo v2, "tsb-exposure-values"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v1, "exposure-offset"

    const-string/jumbo v2, "exposure-offset-values"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v1, "mot-exposure-offset"

    const-string/jumbo v2, "mot-exposure-offset-values"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v1, "exposure-compensation"

    const-string/jumbo v2, "exposure-compensation-values"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v1, "exposure-compensation"

    const-string/jumbo v2, "exposure-compensation-step"

    const-string/jumbo v3, "max-exposure-compensation"

    const-string/jumbo v4, "min-exposure-compensation"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->EXPOSURE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public static getFlash()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "flash-mode"

    const-string/jumbo v3, "flash-mode-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->FLASH:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "ledflash"

    const-string/jumbo v3, "ledflash-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->FLASH:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "ledflash"

    const-string/jumbo v3, "ledflash-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->FLASH:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;

    const-string/jumbo v2, "flash-mode"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->FLASH:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;

    const-string/jumbo v2, "flashmode"

    sget-object v3, Lcom/pinguo/camera360/lib/camera/sheme/Type;->FLASH:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getISO()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "mot-picture-iso"

    const-string/jumbo v3, "mot-picture-iso-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "nv-picture-iso"

    const-string/jumbo v3, "nv-picture-iso-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "iso"

    const-string/jumbo v3, "iso-max"

    const-string/jumbo v4, "iso-min"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "iso"

    const-string/jumbo v3, "iso-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "iso"

    const-string/jumbo v3, "iso-speed-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "iso"

    const-string/jumbo v3, "iso-mode-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->ISO:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMeter()Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "meter-mode"

    const-string/jumbo v3, "meter-mode-values"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->METER:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSaturtion()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "color-saturation"

    const-string/jumbo v3, "color-saturation-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SATURTION:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "saturation"

    const-string/jumbo v3, "max-saturation"

    const-string/jumbo v4, "min-saturation"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SATURTION:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "saturation"

    const-string/jumbo v3, "saturation-max"

    const-string/jumbo v4, "saturation-min"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SATURTION:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;

    const-string/jumbo v2, "saturation"

    const-string/jumbo v3, "max-saturation"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SATURTION:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;

    const-string/jumbo v2, "saturation"

    const-string/jumbo v3, "saturation-max"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SATURTION:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSharpness()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "sharpness"

    const-string/jumbo v3, "sharpness-max"

    const-string/jumbo v4, "sharpness-min"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SHARPNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;

    const-string/jumbo v2, "sharpness"

    const-string/jumbo v3, "max-sharpness"

    const-string/jumbo v4, "min-sharpness"

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SHARPNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMaxMin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;

    const-string/jumbo v2, "sharpness"

    const-string/jumbo v3, "max-sharpness"

    sget-object v4, Lcom/pinguo/camera360/lib/camera/sheme/Type;->SHARPNESS:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeMax;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getWhiteBlance()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;

    const-string/jumbo v2, "whitebalance"

    const-string/jumbo v3, "whitebalance-values"

    const-string/jumbo v4, ","

    sget-object v5, Lcom/pinguo/camera360/lib/camera/sheme/Type;->WHTIE_BALANCE:Lcom/pinguo/camera360/lib/camera/sheme/Type;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
