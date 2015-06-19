.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/e;
.super Ljava/lang/Object;
.source "FilterListUtil.java"


# direct methods
.method public static a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
    .registers 3

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    sget v1, Lcom/facebook/au;->filter_normal:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v0

    return-object v0
.end method

.method public static a()[Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
    .registers 11

    const/16 v10, 0xe

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Amaro"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    sget v3, Lcom/facebook/au;->filter_amaro:I

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Amaro"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "map"

    const-string v4, "amaro/map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "overlay_map"

    const-string v4, "amaro/overlay_map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "blackboard"

    const-string v4, "shared/blackboard.pkm"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Mayfair"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    sget v3, Lcom/facebook/au;->filter_mayfair:I

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Mayfair"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "mayfair/border.png"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "map"

    const-string v4, "mayfair/colorGradient.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "glowField"

    const-string v4, "mayfair/glowField.pkm"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "overlay"

    const-string v4, "mayfair/overlayMap100.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "colorOverlay"

    const-string v4, "mayfair/colorOverlay.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Rise"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    sget v3, Lcom/facebook/au;->filter_rise:I

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Rise"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "map"

    const-string v4, "rise/map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "overlay_map"

    const-string v4, "shared/overlay_map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "blackboard"

    const-string v4, "shared/blackboard.pkm"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Hudson"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_hudson:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Hudson"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "hudson/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "hudson/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "blowout"

    const-string v5, "hudson/blowout.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "overlay_map"

    const-string v5, "shared/overlay_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Valencia"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_valencia:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Valencia"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "valencia/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "gradient_map"

    const-string v5, "valencia/gradient_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "X-Pro II"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_xproii:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "XPro2"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "x_pro2/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "x_pro2/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "vignette_map_plus_darker"

    const-string v5, "shared/vignette_map_plus_darker.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Sierra"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_sierra:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Sierra"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "sierra/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "sierra/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "smoke"

    const-string v5, "sierra/smoke.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "vignette"

    const-string v5, "sierra/vignette.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "overlay_map"

    const-string v5, "amaro/overlay_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "soft_light"

    const-string v5, "sierra/soft_light.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Willow"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_willow:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Willow"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "glowMap"

    const-string v5, "willow/glowField.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "overlayMap"

    const-string v5, "willow/overlayMap81.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "vignette"

    const-string v5, "willow/willowVignette.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "softLightMap"

    const-string v5, "willow/willowSoftLight100.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "willow/willowMap.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Lo-Fi"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_lofi:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "LoFi"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "lo_fi/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "lo_fi/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "vignette_map"

    const-string v5, "lo_fi/vignette_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Earlybird"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    sget v3, Lcom/facebook/au;->filter_earlybird:I

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Earlybird"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "earlybird/border.png"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "map"

    const-string v4, "earlybird/map_2d.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "curves_map"

    const-string v4, "earlybird/curves_map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "vignette_map_plus_darker"

    const-string v4, "shared/vignette_map_plus_darker.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "overlay_map"

    const-string v4, "earlybird/overlay_map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "blowout_map"

    const-string v4, "earlybird/blowout_map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v2

    aput-object v2, v1, v9

    const/16 v2, 0xb

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Sutro"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_sutro:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Sutro"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "shared/border_black.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "sutro/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "metal"

    const-string v5, "sutro/metal.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "edge_burn"

    const-string v5, "sutro/edge_burn.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "black_overlay_map"

    const-string v5, "shared/black_overlay_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "soft_light_map"

    const-string v5, "shared/soft_light_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Toaster"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_toaster:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Toaster"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "shared/border_white.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "toaster/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "metal"

    const-string v5, "toaster/metal.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "color_shift_map"

    const-string v5, "toaster/color_shift_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "overlay_map"

    const-string v5, "toaster/overlay_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "soft_light_map"

    const-string v5, "toaster/soft_light_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Brannan"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_brannan:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Brannan"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "brannan/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "brannan/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "luma_map"

    const-string v5, "brannan/luma_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "screen_map"

    const-string v5, "brannan/screen_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "blowout_map"

    const-string v5, "brannan/blowout_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "contrast_map"

    const-string v5, "brannan/contrast_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Inkwell"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    sget v3, Lcom/facebook/au;->filter_inkwell:I

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "Inkwell"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "shared/border_white.png"

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    const-string v3, "map"

    const-string v4, "inkwell/map.png"

    invoke-virtual {v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v2

    aput-object v2, v1, v10

    const/16 v2, 0xf

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Walden"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_walden:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Walden"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "shared/border_black.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "walden/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "vignette_map"

    const-string v5, "shared/vignette_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Hefe"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_hefe:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Hefe"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "shared/border_black.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "hefe/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "metal"

    const-string v5, "hefe/metal.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "edge_burn"

    const-string v5, "shared/edge_burn.pkm"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "gradient_map"

    const-string v5, "hefe/gradient_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "soft_light_map"

    const-string v5, "hefe/soft_light_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Nashville"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_nashville:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Nashville"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "nashville/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "nashville/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "1977"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_1977:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Nineteen77"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "shared/border_white.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "1977/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "screen_map"

    const-string v5, "1977/screen_map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "Kelvin"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    sget v4, Lcom/facebook/au;->filter_kelvin:I

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "LordKelvin"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "lord_kelvin/border.png"

    invoke-virtual {v3, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    const-string v4, "map"

    const-string v5, "lord_kelvin/map.png"

    invoke-virtual {v3, v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method
